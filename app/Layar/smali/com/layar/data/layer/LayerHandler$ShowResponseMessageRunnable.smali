.class Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;
.super Ljava/lang/Object;
.source "LayerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowResponseMessageRunnable"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/data/layer/LayerHandler;


# direct methods
.method public constructor <init>(Lcom/layar/data/layer/LayerHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;->this$0:Lcom/layar/data/layer/LayerHandler;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;->mMessage:Ljava/lang/String;

    .line 301
    const/4 v2, 0x0

    .line 300
    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 302
    return-void
.end method
