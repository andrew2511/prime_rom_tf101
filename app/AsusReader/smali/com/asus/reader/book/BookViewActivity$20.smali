.class Lcom/asus/reader/book/BookViewActivity$20;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;

.field final synthetic val$text1:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2154
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$20;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity$20;->val$text1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2156
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$20;->val$text1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2157
    .local v0, note:Ljava/lang/String;
    const-string v1, "BookViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update the annotation of text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$20;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$20;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$20;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$20;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$900(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->updateAnnotation(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$20;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6300(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2161
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$20;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6300(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 2162
    return-void
.end method
