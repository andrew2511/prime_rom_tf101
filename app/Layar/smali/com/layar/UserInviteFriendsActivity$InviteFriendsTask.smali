.class Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;
.super Landroid/os/AsyncTask;
.source "UserInviteFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/UserInviteFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InviteFriendsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCount:I

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mJsonIds:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/UserInviteFriendsActivity;


# direct methods
.method public constructor <init>(Lcom/layar/UserInviteFriendsActivity;Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "count"
    .parameter "jsonIds"

    .prologue
    const/4 v3, 0x1

    .line 123
    iput-object p1, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    .line 109
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    iput p3, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mCount:I

    .line 111
    iput-object p4, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mJsonIds:Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mDialog:Landroid/app/ProgressDialog;

    .line 114
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask$1;

    invoke-direct {v1, p0}, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask$1;-><init>(Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 120
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 122
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mJsonIds:Ljava/lang/String;

    invoke-static {v0}, Lcom/layar/data/social/SocialCommunicator;->inviteFriends(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 149
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    iget-object v1, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-virtual {v1}, Lcom/layar/UserInviteFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "friends added"

    iget v2, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->mCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/layar/UserInviteFriendsActivity;->setResult(ILandroid/content/Intent;)V

    .line 142
    iget-object v1, p0, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-virtual {v1}, Lcom/layar/UserInviteFriendsActivity;->finish()V

    .line 144
    return-void
.end method
