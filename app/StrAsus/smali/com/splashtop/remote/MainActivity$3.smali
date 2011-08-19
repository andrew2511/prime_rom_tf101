.class Lcom/splashtop/remote/MainActivity$3;
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
    .line 223
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$3;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$3;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$200(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$3;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$200(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
