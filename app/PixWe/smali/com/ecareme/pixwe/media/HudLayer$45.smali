.class Lcom/ecareme/pixwe/media/HudLayer$45;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->loginAndPostToWall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 993
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$13(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/facebook/android/Facebook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->saveCredentials(Lcom/facebook/android/Facebook;)Z

    .line 975
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$14(Lcom/ecareme/pixwe/media/HudLayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$14(Lcom/ecareme/pixwe/media/HudLayer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$15(Lcom/ecareme/pixwe/media/HudLayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->postToWall(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 988
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$45;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 983
    return-void
.end method
