.class Lcom/asus/Viewer/MovieView$10$2;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 691
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$10$2;->this$1:Lcom/asus/Viewer/MovieView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$10$2;->this$1:Lcom/asus/Viewer/MovieView$10;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 694
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$10$2;->this$1:Lcom/asus/Viewer/MovieView$10;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v0}, Lcom/asus/Viewer/MovieView;->access$1900(Lcom/asus/Viewer/MovieView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 695
    return-void
.end method
