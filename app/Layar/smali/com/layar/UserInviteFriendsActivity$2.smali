.class Lcom/layar/UserInviteFriendsActivity$2;
.super Ljava/lang/Object;
.source "UserInviteFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserInviteFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserInviteFriendsActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserInviteFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserInviteFriendsActivity$2;->this$0:Lcom/layar/UserInviteFriendsActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity$2;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-virtual {v0}, Lcom/layar/UserInviteFriendsActivity;->finish()V

    .line 60
    return-void
.end method
