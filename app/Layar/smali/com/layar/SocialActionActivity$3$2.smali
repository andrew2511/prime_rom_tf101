.class Lcom/layar/SocialActionActivity$3$2;
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
    iput-object p1, p0, Lcom/layar/SocialActionActivity$3$2;->this$1:Lcom/layar/SocialActionActivity$3;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3$2;->this$1:Lcom/layar/SocialActionActivity$3;

    invoke-static {v0}, Lcom/layar/SocialActionActivity$3;->access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/SocialActionActivity;->setResult(I)V

    .line 290
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3$2;->this$1:Lcom/layar/SocialActionActivity$3;

    invoke-static {v0}, Lcom/layar/SocialActionActivity$3;->access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/SocialActionActivity;->finish()V

    .line 291
    return-void
.end method
