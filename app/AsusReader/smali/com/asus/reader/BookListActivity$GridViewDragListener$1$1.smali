.class Lcom/asus/reader/BookListActivity$GridViewDragListener$1$1;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/asus/reader/BookListActivity$GridViewDragListener$1;

.field final synthetic val$dyBook:I


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity$GridViewDragListener$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2924
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$1;->this$2:Lcom/asus/reader/BookListActivity$GridViewDragListener$1;

    iput p2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$1;->val$dyBook:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$1;->this$2:Lcom/asus/reader/BookListActivity$GridViewDragListener$1;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$1;->val$dyBook:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/ui/BookGrid;->smoothScrollBy(II)V

    .line 2927
    return-void
.end method
