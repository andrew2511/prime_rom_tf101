.class Lcom/layar/UserAddAccountsActivity$2$1;
.super Ljava/lang/Object;
.source "UserAddAccountsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserAddAccountsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserAddAccountsActivity$2;

.field private final synthetic val$social:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/UserAddAccountsActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserAddAccountsActivity$2$1;->this$1:Lcom/layar/UserAddAccountsActivity$2;

    iput-object p2, p0, Lcom/layar/UserAddAccountsActivity$2$1;->val$social:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity$2$1;->this$1:Lcom/layar/UserAddAccountsActivity$2;

    invoke-static {v0}, Lcom/layar/UserAddAccountsActivity$2;->access$0(Lcom/layar/UserAddAccountsActivity$2;)Lcom/layar/UserAddAccountsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserAddAccountsActivity$2$1;->val$social:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/UserAddAccountsActivity;->access$2(Lcom/layar/UserAddAccountsActivity;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/layar/data/social/SocialDisassociateTask;

    iget-object v1, p0, Lcom/layar/UserAddAccountsActivity$2$1;->this$1:Lcom/layar/UserAddAccountsActivity$2;

    invoke-static {v1}, Lcom/layar/UserAddAccountsActivity$2;->access$0(Lcom/layar/UserAddAccountsActivity$2;)Lcom/layar/UserAddAccountsActivity;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/layar/UserAddAccountsActivity$2$1;->this$1:Lcom/layar/UserAddAccountsActivity$2;

    invoke-static {v2}, Lcom/layar/UserAddAccountsActivity$2;->access$0(Lcom/layar/UserAddAccountsActivity$2;)Lcom/layar/UserAddAccountsActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/UserAddAccountsActivity$2$1;->val$social:Ljava/lang/String;

    .line 122
    invoke-direct {v0, v1, v2, v3}, Lcom/layar/data/social/SocialDisassociateTask;-><init>(Landroid/content/Context;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 123
    invoke-virtual {v0, v1}, Lcom/layar/data/social/SocialDisassociateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method
