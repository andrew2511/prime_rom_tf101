.class Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask$1;
.super Ljava/lang/Object;
.source "UserInviteFriendsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;-><init>(Lcom/layar/UserInviteFriendsActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;


# direct methods
.method constructor <init>(Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask$1;->this$1:Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask$1;->this$1:Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->cancel(Z)Z

    .line 165
    return-void
.end method
