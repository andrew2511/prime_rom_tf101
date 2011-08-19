.class Lcom/android/browser/AddBookmarkPage$1;
.super Landroid/os/Handler;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/AddBookmarkPage;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 919
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 942
    .end local p0
    :goto_0
    return-void

    .line 921
    .restart local p0
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    const v2, 0x7f09004f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    const v2, 0x7f090050

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 930
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 931
    .local v0, b:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "touch_icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    const-string v1, "favicon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v5, p0, v1}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/browser/AddBookmarkPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 939
    .end local v0           #b:Landroid/os/Bundle;
    .restart local p0
    :pswitch_2
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
