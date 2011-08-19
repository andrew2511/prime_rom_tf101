.class Lcom/layar/SocialActionActivity$3$1;
.super Ljava/lang/Object;
.source "SocialActionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SocialActionActivity$3;->handleResponse(Lcom/layar/data/user/LoginResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/SocialActionActivity$3;


# direct methods
.method constructor <init>(Lcom/layar/SocialActionActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/SocialActionActivity$3$1;->this$1:Lcom/layar/SocialActionActivity$3;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 274
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 275
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/SocialActionActivity$3$1;->this$1:Lcom/layar/SocialActionActivity$3;

    invoke-static {v1}, Lcom/layar/SocialActionActivity$3;->access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 276
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/SocialActionActivity$3$1;->this$1:Lcom/layar/SocialActionActivity$3;

    invoke-static {v1}, Lcom/layar/SocialActionActivity$3;->access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/social/SocialManager;->setSocialsPrefered(Ljava/lang/String;Z)V

    .line 277
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3$1;->this$1:Lcom/layar/SocialActionActivity$3;

    invoke-static {v0}, Lcom/layar/SocialActionActivity$3;->access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/SocialActionActivity$3$1;->this$1:Lcom/layar/SocialActionActivity$3;

    invoke-static {v1}, Lcom/layar/SocialActionActivity$3;->access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/SocialActionActivity;->access$1(Lcom/layar/SocialActionActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/layar/SocialActionActivity;->setResult(I)V

    .line 279
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3$1;->this$1:Lcom/layar/SocialActionActivity$3;

    invoke-static {v0}, Lcom/layar/SocialActionActivity$3;->access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/SocialActionActivity;->finish()V

    .line 280
    return-void

    .line 278
    :cond_0
    const/16 v1, 0xb

    goto :goto_0
.end method
