.class Lcom/layar/UserSettingsActivity$4$1;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserSettingsActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserSettingsActivity$4;

.field private final synthetic val$social:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/UserSettingsActivity$4;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserSettingsActivity$4$1;->this$1:Lcom/layar/UserSettingsActivity$4;

    iput-object p2, p0, Lcom/layar/UserSettingsActivity$4$1;->val$social:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$4$1;->this$1:Lcom/layar/UserSettingsActivity$4;

    invoke-static {v0}, Lcom/layar/UserSettingsActivity$4;->access$0(Lcom/layar/UserSettingsActivity$4;)Lcom/layar/UserSettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserSettingsActivity$4$1;->val$social:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/UserSettingsActivity;->access$6(Lcom/layar/UserSettingsActivity;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/layar/data/social/SocialDisassociateTask;

    iget-object v1, p0, Lcom/layar/UserSettingsActivity$4$1;->this$1:Lcom/layar/UserSettingsActivity$4;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$4;->access$0(Lcom/layar/UserSettingsActivity$4;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/UserSettingsActivity$4$1;->this$1:Lcom/layar/UserSettingsActivity$4;

    invoke-static {v2}, Lcom/layar/UserSettingsActivity$4;->access$0(Lcom/layar/UserSettingsActivity$4;)Lcom/layar/UserSettingsActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/UserSettingsActivity$4$1;->val$social:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/data/social/SocialDisassociateTask;-><init>(Landroid/content/Context;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/data/social/SocialDisassociateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method
