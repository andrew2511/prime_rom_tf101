.class Lcom/splashtop/remote/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$5;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$5;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$300(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$5;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$300(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
