.class Lcom/asus/reader/ProgressActivity$2;
.super Landroid/os/Handler;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/asus/reader/ProgressActivity$2;->this$0:Lcom/asus/reader/ProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/asus/reader/ProgressActivity;->access$100()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/asus/reader/ProgressActivity$2;->this$0:Lcom/asus/reader/ProgressActivity;

    const v1, 0x7f0700b2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local p0
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/asus/reader/ProgressActivity$2;->this$0:Lcom/asus/reader/ProgressActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
