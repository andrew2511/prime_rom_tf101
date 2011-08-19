.class Lcom/google/android/talk/BuddyListCombo$7;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/fragments/BuddyListFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddToContacts(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1129
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0, p1}, Lcom/google/android/talk/BuddyListCombo;->access$300(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public onCloseAllChats()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1124
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1125
    return-void
.end method

.method public onDisplayProgress(Z)V
    .locals 3
    .parameter "display"

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1045
    .local v0, pb:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1046
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    :cond_0
    return-void

    .line 1046
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onDisplaySettings()V
    .locals 4

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1159
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v2, Lcom/google/android/talk/GTalkPreferencesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1160
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$800(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1161
    const-string v1, "username"

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$800(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1164
    return-void
.end method

.method public onInviteFriend(J)V
    .locals 3
    .parameter

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1110
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1800(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1113
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v2, Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1114
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1115
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1116
    return-void
.end method

.method public onLeaveChat(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "username"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1135
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat(Ljava/lang/String;)V

    .line 1138
    :cond_0
    return-void
.end method

.method public onLogout()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1120
    return-void
.end method

.method public onMakeInvite(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_MANAGE_SUBSCRIPTION"

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1093
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v2, Lcom/google/android/talk/SubscriptionScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1094
    const-string v1, "from"

    iget-object v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1097
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1098
    return-void
.end method

.method public onOpenChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1029
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1030
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$1800(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1032
    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    iget-object v4, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1034
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1036
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "from"

    iget-object v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const-string v2, "accountId"

    iget-wide v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1039
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v3, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-static {v2, v3}, Lcom/google/android/talk/BuddyListCombo;->access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1040
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v2, v2, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1041
    return-void
.end method

.method public onOpenGroupChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1051
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1052
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1800(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1054
    iget-wide v0, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v1

    .line 1055
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1200(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 1057
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1059
    const-string v1, "from"

    iget-object v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string v1, "accountId"

    iget-wide v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1061
    const-string v1, "is_muc"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1062
    if-eqz v0, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v3, Lcom/google/android/talk/GroupChatApproval;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1064
    const-string v1, "muc_inviter"

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string v1, "muc_password"

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v1, "room"

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/talk/BuddyListCombo;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1074
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1073
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRequestSetSelfStatus(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1102
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1800(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1104
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1105
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFocus(Landroid/content/Intent;)V

    .line 1106
    return-void
.end method

.method public onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1142
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0, p1}, Lcom/google/android/talk/BuddyListCombo;->access$100(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    .line 1143
    return-void
.end method

.method public onShowInvites(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1148
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v2, Lcom/google/android/talk/InvitedUserList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1149
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1150
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1151
    return-void
.end method
