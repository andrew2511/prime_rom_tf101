.class Lcom/layar/ShareSocialActivity$1;
.super Ljava/lang/Object;
.source "ShareSocialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ShareSocialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ShareSocialActivity;


# direct methods
.method constructor <init>(Lcom/layar/ShareSocialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$1;->this$0:Lcom/layar/ShareSocialActivity;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$1;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v0}, Lcom/layar/ShareSocialActivity;->access$3(Lcom/layar/ShareSocialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$1;->this$0:Lcom/layar/ShareSocialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ShareSocialActivity;->access$12(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$1;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v0}, Lcom/layar/ShareSocialActivity;->access$6(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$1;->this$0:Lcom/layar/ShareSocialActivity;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$1;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v1}, Lcom/layar/ShareSocialActivity;->access$6(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layar/ShareSocialActivity;->access$13(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$1;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v0}, Lcom/layar/ShareSocialActivity;->access$14(Lcom/layar/ShareSocialActivity;)V

    goto :goto_0
.end method
