.class Lcom/android/gallery3d/app/MediaController$3;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MediaController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController$3;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$3;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v0}, Lcom/android/gallery3d/app/MediaController;->access$400(Lcom/android/gallery3d/app/MediaController;)V

    .line 475
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$3;->this$0:Lcom/android/gallery3d/app/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 476
    return-void
.end method
