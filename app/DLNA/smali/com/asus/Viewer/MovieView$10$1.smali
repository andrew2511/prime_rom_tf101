.class Lcom/asus/Viewer/MovieView$10$1;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/MovieView$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/Viewer/MovieView$10;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/MovieView$10;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$10$1;->this$1:Lcom/asus/Viewer/MovieView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 682
    if-eqz p2, :cond_0

    .line 683
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$10$1;->this$1:Lcom/asus/Viewer/MovieView$10;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v0, p2}, Lcom/asus/Viewer/MovieView;->access$1802(Lcom/asus/Viewer/MovieView;I)I

    .line 684
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$10$1;->this$1:Lcom/asus/Viewer/MovieView$10;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v0}, Lcom/asus/Viewer/MovieView;->finish()V

    .line 689
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$10$1;->this$1:Lcom/asus/Viewer/MovieView$10;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 687
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$10$1;->this$1:Lcom/asus/Viewer/MovieView$10;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v0}, Lcom/asus/Viewer/MovieView;->access$1900(Lcom/asus/Viewer/MovieView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
