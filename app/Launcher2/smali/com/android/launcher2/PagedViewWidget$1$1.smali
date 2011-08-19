.class Lcom/android/launcher2/PagedViewWidget$1$1;
.super Ljava/lang/Object;
.source "PagedViewWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedViewWidget$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedViewWidget$1;

.field final synthetic val$outline:Landroid/graphics/Bitmap;

.field final synthetic val$widget:Lcom/android/launcher2/PagedViewWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewWidget$1;Lcom/android/launcher2/PagedViewWidget;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget$1$1;->this$0:Lcom/android/launcher2/PagedViewWidget$1;

    iput-object p2, p0, Lcom/android/launcher2/PagedViewWidget$1$1;->val$widget:Lcom/android/launcher2/PagedViewWidget;

    iput-object p3, p0, Lcom/android/launcher2/PagedViewWidget$1$1;->val$outline:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1$1;->val$widget:Lcom/android/launcher2/PagedViewWidget;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget$1$1;->val$outline:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->access$902(Lcom/android/launcher2/PagedViewWidget;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1$1;->val$widget:Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 119
    return-void
.end method
