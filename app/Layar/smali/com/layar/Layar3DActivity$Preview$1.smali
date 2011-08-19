.class Lcom/layar/Layar3DActivity$Preview$1;
.super Landroid/os/Handler;
.source "Layar3DActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Layar3DActivity$Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/Layar3DActivity$Preview;


# direct methods
.method constructor <init>(Lcom/layar/Layar3DActivity$Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Layar3DActivity$Preview$1;->this$1:Lcom/layar/Layar3DActivity$Preview;

    .line 660
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 664
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 665
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    if-nez v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    invoke-virtual {v0}, Lcom/layar/Layar3DActivity$Preview;->surfaceChanged()V

    goto :goto_0
.end method
