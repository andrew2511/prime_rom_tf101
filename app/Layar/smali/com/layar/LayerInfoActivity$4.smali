.class Lcom/layar/LayerInfoActivity$4;
.super Ljava/lang/Object;
.source "LayerInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/LayerInfoActivity;->showShowActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayerInfoActivity;


# direct methods
.method constructor <init>(Lcom/layar/LayerInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/LayerInfoActivity$4;->this$0:Lcom/layar/LayerInfoActivity;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 402
    packed-switch p2, :pswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$4;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity$4;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v1, v1, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-static {v0, v1}, Lcom/layar/data/layer/LayerHelper;->sendEmail(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$4;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-static {v0}, Lcom/layar/LayerInfoActivity;->access$3(Lcom/layar/LayerInfoActivity;)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
