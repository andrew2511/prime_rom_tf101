.class Lcom/asus/reader/book/BookViewActivity$4;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
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
    .line 658
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$4;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 660
    move-object v0, p1

    check-cast v0, Lcom/asus/reader/ui/AnnotationButton;

    move-object v1, v0

    .line 661
    .local v1, noteButton:Lcom/asus/reader/ui/AnnotationButton;
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$4;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, v1, Lcom/asus/reader/ui/AnnotationButton;->mStart:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$4;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, v1, Lcom/asus/reader/ui/AnnotationButton;->mEnd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$902(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$4;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    .line 664
    return-void
.end method
