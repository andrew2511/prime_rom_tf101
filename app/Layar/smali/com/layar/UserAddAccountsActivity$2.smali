.class Lcom/layar/UserAddAccountsActivity$2;
.super Ljava/lang/Object;
.source "UserAddAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserAddAccountsActivity;->getSocialChangeListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserAddAccountsActivity;

.field private final synthetic val$social:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/UserAddAccountsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserAddAccountsActivity$2;->this$0:Lcom/layar/UserAddAccountsActivity;

    iput-object p2, p0, Lcom/layar/UserAddAccountsActivity$2;->val$social:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserAddAccountsActivity$2;)Lcom/layar/UserAddAccountsActivity;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity$2;->this$0:Lcom/layar/UserAddAccountsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity$2;->this$0:Lcom/layar/UserAddAccountsActivity;

    invoke-static {v0}, Lcom/layar/UserAddAccountsActivity;->access$0(Lcom/layar/UserAddAccountsActivity;)Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserAddAccountsActivity$2;->val$social:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity$2;->this$0:Lcom/layar/UserAddAccountsActivity;

    iget-object v1, p0, Lcom/layar/UserAddAccountsActivity$2;->val$social:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/UserAddAccountsActivity;->access$1(Lcom/layar/UserAddAccountsActivity;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity$2;->this$0:Lcom/layar/UserAddAccountsActivity;

    iget-object v1, p0, Lcom/layar/UserAddAccountsActivity$2;->val$social:Ljava/lang/String;

    .line 118
    new-instance v2, Lcom/layar/UserAddAccountsActivity$2$1;

    iget-object v3, p0, Lcom/layar/UserAddAccountsActivity$2;->val$social:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/layar/UserAddAccountsActivity$2$1;-><init>(Lcom/layar/UserAddAccountsActivity$2;Ljava/lang/String;)V

    .line 117
    invoke-static {v0, v1, v2}, Lcom/layar/util/UiUtils;->dissconnectPromtDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
