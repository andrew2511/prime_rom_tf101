.class Lcom/android/gallery3d/ui/CacheBarView$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "CacheBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/CacheBarView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/CacheBarView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheBarView$1;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/CacheBarView$1;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/CacheBarView;->access$002(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;)Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/CacheBarView$1;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CacheBarView;->refreshStorageInfo()V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
