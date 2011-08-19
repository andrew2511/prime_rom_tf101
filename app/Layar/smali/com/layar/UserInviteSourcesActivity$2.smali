.class Lcom/layar/UserInviteSourcesActivity$2;
.super Ljava/lang/Object;
.source "UserInviteSourcesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserInviteSourcesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserInviteSourcesActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserInviteSourcesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserInviteSourcesActivity$2;->this$0:Lcom/layar/UserInviteSourcesActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/layar/UserInviteSourcesActivity$2;->this$0:Lcom/layar/UserInviteSourcesActivity;

    invoke-virtual {v0}, Lcom/layar/UserInviteSourcesActivity;->finish()V

    .line 71
    return-void
.end method
