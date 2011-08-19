.class Lcom/google/android/gm/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/NumberPicker;
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
    .line 83
    iput-object p1, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$000(Lcom/google/android/gm/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$100(Lcom/google/android/gm/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/NumberPicker;->changeCurrent(I)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$300(Lcom/google/android/gm/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$200(Lcom/google/android/gm/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$400(Lcom/google/android/gm/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$100(Lcom/google/android/gm/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/NumberPicker;->changeCurrent(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$300(Lcom/google/android/gm/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$2;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$200(Lcom/google/android/gm/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
