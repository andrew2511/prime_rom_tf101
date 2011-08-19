.class Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;
.super Ljava/lang/Object;
.source "FacebookShareActivity.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallPostDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 152
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 128
    const-string v1, "post_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, postId:Ljava/lang/String;
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 135
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->printStackTrace()V

    .line 146
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 147
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    .line 140
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 141
    return-void
.end method
