.class Lcom/asus/Viewer/ViewImage$10$2;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/Viewer/ViewImage$10;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage$10;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$10$2;->this$1:Lcom/asus/Viewer/ViewImage$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$10$2;->this$1:Lcom/asus/Viewer/ViewImage$10;

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v1, 0xbb8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    .line 791
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$10$2;->this$1:Lcom/asus/Viewer/ViewImage$10;

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$2300(Lcom/asus/Viewer/ViewImage;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 792
    return-void
.end method
