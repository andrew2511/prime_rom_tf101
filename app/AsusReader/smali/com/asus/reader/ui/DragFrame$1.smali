.class Lcom/asus/reader/ui/DragFrame$1;
.super Ljava/lang/Object;
.source "DragFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ui/DragFrame;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/DragFrame;


# direct methods
.method constructor <init>(Lcom/asus/reader/ui/DragFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-static {v4}, Lcom/asus/reader/ui/DragFrame;->access$000(Lcom/asus/reader/ui/DragFrame;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 139
    .local v0, pressTime:J
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    iget-object v2, v2, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    const/16 v3, 0x16b

    if-ge v2, v3, :cond_1

    .line 140
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-static {v2}, Lcom/asus/reader/ui/DragFrame;->access$100(Lcom/asus/reader/ui/DragFrame;)I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    cmp-long v2, v0, v8

    if-lez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-static {v2, v6}, Lcom/asus/reader/ui/DragFrame;->access$200(Lcom/asus/reader/ui/DragFrame;I)V

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-static {v2, v7}, Lcom/asus/reader/ui/DragFrame;->access$200(Lcom/asus/reader/ui/DragFrame;I)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-static {v2}, Lcom/asus/reader/ui/DragFrame;->access$100(Lcom/asus/reader/ui/DragFrame;)I

    move-result v2

    const/16 v3, -0x28

    if-le v2, v3, :cond_2

    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-static {v2, v7}, Lcom/asus/reader/ui/DragFrame;->access$200(Lcom/asus/reader/ui/DragFrame;I)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame$1;->this$0:Lcom/asus/reader/ui/DragFrame;

    invoke-static {v2, v6}, Lcom/asus/reader/ui/DragFrame;->access$200(Lcom/asus/reader/ui/DragFrame;I)V

    goto :goto_0
.end method
