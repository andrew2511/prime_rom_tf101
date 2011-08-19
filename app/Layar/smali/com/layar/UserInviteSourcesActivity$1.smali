.class Lcom/layar/UserInviteSourcesActivity$1;
.super Ljava/lang/Object;
.source "UserInviteSourcesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserInviteSourcesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserInviteSourcesActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserInviteSourcesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserInviteSourcesActivity$1;->this$0:Lcom/layar/UserInviteSourcesActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity$1;->this$0:Lcom/layar/UserInviteSourcesActivity;

    invoke-static {v2}, Lcom/layar/UserInviteSourcesActivity;->access$0(Lcom/layar/UserInviteSourcesActivity;)Lcom/layar/adapters/InviteSourcesAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/layar/adapters/InviteSourcesAdapter;->getItem(I)Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    move-result-object v1

    .line 46
    .local v1, source:Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity$1;->this$0:Lcom/layar/UserInviteSourcesActivity;

    .line 47
    const-class v3, Lcom/layar/UserInviteFriendsActivity;

    .line 46
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "invites source"

    iget v3, v1, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity$1;->this$0:Lcom/layar/UserInviteSourcesActivity;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Lcom/layar/UserInviteSourcesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    return-void
.end method
