.class Lcom/google/android/gm/NumberPicker$5;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/gm/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$500(Lcom/google/android/gm/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 184
    const v0, 0x7f0e0065

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0, v2}, Lcom/google/android/gm/NumberPicker;->access$002(Lcom/google/android/gm/NumberPicker;Z)Z

    .line 186
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$300(Lcom/google/android/gm/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$700(Lcom/google/android/gm/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 187
    :cond_1
    const v0, 0x7f0e0067

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0, v2}, Lcom/google/android/gm/NumberPicker;->access$402(Lcom/google/android/gm/NumberPicker;Z)Z

    .line 189
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$300(Lcom/google/android/gm/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$5;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$700(Lcom/google/android/gm/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
