.class Lcom/asus/reader/book/BookViewActivity$15;
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


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$15;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$15;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0, p2}, Lcom/asus/reader/book/BookViewActivity;->access$6002(Lcom/asus/reader/book/BookViewActivity;I)I

    .line 2038
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$15;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    .line 2039
    return-void
.end method
