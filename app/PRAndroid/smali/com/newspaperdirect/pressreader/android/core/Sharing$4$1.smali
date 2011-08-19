.class Lcom/newspaperdirect/pressreader/android/core/Sharing$4$1;
.super Ljava/lang/Object;
.source "Sharing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$4;

.field private final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$4;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$4;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4$1;->val$editText:Landroid/widget/EditText;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$4;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$4;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$9(Lcom/newspaperdirect/pressreader/android/core/Sharing;Ljava/lang/String;)V

    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    return-void
.end method
