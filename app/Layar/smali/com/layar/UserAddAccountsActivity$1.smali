.class Lcom/layar/UserAddAccountsActivity$1;
.super Ljava/lang/Object;
.source "UserAddAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserAddAccountsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserAddAccountsActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserAddAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserAddAccountsActivity$1;->this$0:Lcom/layar/UserAddAccountsActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity$1;->this$0:Lcom/layar/UserAddAccountsActivity;

    invoke-virtual {v0}, Lcom/layar/UserAddAccountsActivity;->finish()V

    .line 53
    return-void
.end method
