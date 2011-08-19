.class Lcom/google/android/gm/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 147
    iput-object p1, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$500(Lcom/google/android/gm/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/NumberPicker;->access$600(Lcom/google/android/gm/NumberPicker;Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$500(Lcom/google/android/gm/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0}, Lcom/google/android/gm/NumberPicker;->access$500(Lcom/google/android/gm/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 153
    :cond_0
    const v0, 0x7f0e0065

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$100(Lcom/google/android/gm/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/NumberPicker;->changeCurrent(I)V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    const v0, 0x7f0e0067

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker$3;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v1}, Lcom/google/android/gm/NumberPicker;->access$100(Lcom/google/android/gm/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method
