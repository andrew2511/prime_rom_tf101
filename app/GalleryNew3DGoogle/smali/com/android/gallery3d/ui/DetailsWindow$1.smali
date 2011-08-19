.class Lcom/android/gallery3d/ui/DetailsWindow$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "DetailsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DetailsWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsWindow;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow$1;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$1;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->updateLocation(Landroid/location/Address;)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$1;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->invalidate()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
