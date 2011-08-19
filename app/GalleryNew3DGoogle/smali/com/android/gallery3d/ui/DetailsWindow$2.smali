.class Lcom/android/gallery3d/ui/DetailsWindow$2;
.super Lcom/android/gallery3d/ui/Icon;
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
.method constructor <init>(Lcom/android/gallery3d/ui/DetailsWindow;Landroid/content/Context;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow$2;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/ui/Icon;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/BasicTexture;)V

    return-void
.end method


# virtual methods
.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$2;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->access$200(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$2;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->access$200(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;->onClose()V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
