.class Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;
.super Landroid/os/AsyncTask;
.source "UserInviteFriendsActivity.java"

# interfaces
.implements Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/UserInviteFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFriendsListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/user/FriendsListResponse;",
        ">;",
        "Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;"
    }
.end annotation


# instance fields
.field private final mDialog:Landroid/app/ProgressDialog;

.field private mResponse:Lcom/layar/data/user/FriendsListResponse;

.field final synthetic this$0:Lcom/layar/UserInviteFriendsActivity;


# direct methods
.method public constructor <init>(Lcom/layar/UserInviteFriendsActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 170
    iput-object p1, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    .line 159
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    .line 161
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask$1;

    invoke-direct {v1, p0}, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask$1;-><init>(Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 169
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/user/FriendsListResponse;
    .locals 1
    .parameter "params"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/layar/data/social/SocialCommunicator;->getFriendsList(Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;)V

    .line 183
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mResponse:Lcom/layar/data/user/FriendsListResponse;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/user/FriendsListResponse;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lcom/layar/data/user/FriendsListResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mResponse:Lcom/layar/data/user/FriendsListResponse;

    .line 218
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 211
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-virtual {v0}, Lcom/layar/UserInviteFriendsActivity;->finish()V

    .line 213
    return-void
.end method

.method protected onPostExecute(Lcom/layar/data/user/FriendsListResponse;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 191
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    iget-object v2, v2, Lcom/layar/UserInviteFriendsActivity;->helper:Lcom/layar/ActivityHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/layar/data/user/FriendsListResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    new-instance v3, Lcom/layar/adapters/InviteFriendAdapter;

    iget-object v4, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    .line 195
    iget-object v5, p1, Lcom/layar/data/user/FriendsListResponse;->friendsOnLayar:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/layar/data/user/FriendsListResponse;->friendsOnSource:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v6}, Lcom/layar/adapters/InviteFriendAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 194
    invoke-static {v2, v3}, Lcom/layar/UserInviteFriendsActivity;->access$2(Lcom/layar/UserInviteFriendsActivity;Lcom/layar/adapters/InviteFriendAdapter;)V

    .line 196
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v2}, Lcom/layar/UserInviteFriendsActivity;->access$1(Lcom/layar/UserInviteFriendsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v3}, Lcom/layar/UserInviteFriendsActivity;->access$0(Lcom/layar/UserInviteFriendsActivity;)Lcom/layar/adapters/InviteFriendAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 198
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v2}, Lcom/layar/UserInviteFriendsActivity;->access$0(Lcom/layar/UserInviteFriendsActivity;)Lcom/layar/adapters/InviteFriendAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/adapters/InviteFriendAdapter;->getGroupCount()I

    move-result v0

    .line 199
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 200
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v2}, Lcom/layar/UserInviteFriendsActivity;->access$1(Lcom/layar/UserInviteFriendsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p1}, Lcom/layar/data/user/FriendsListResponse;->getResponseCode()I

    move-result v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-virtual {v2}, Lcom/layar/UserInviteFriendsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 203
    const v3, 0x7f090116

    const/4 v4, 0x0

    .line 202
    invoke-static {v2, v3, v4}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/layar/ui/SmartToast;->show()V

    .line 204
    iget-object v2, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-virtual {v2}, Lcom/layar/UserInviteFriendsActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/user/FriendsListResponse;

    invoke-virtual {p0, p1}, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->onPostExecute(Lcom/layar/data/user/FriendsListResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 175
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v0}, Lcom/layar/UserInviteFriendsActivity;->access$1(Lcom/layar/UserInviteFriendsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v0, v1}, Lcom/layar/UserInviteFriendsActivity;->access$2(Lcom/layar/UserInviteFriendsActivity;Lcom/layar/adapters/InviteFriendAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 178
    return-void
.end method
