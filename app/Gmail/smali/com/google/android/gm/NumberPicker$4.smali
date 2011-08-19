.class Lcom/google/android/gm/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 161
    iput-object p1, p0, Lcom/google/android/gm/NumberPicker$4;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 167
    if-nez p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker$4;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v0, p1}, Lcom/google/android/gm/NumberPicker;->access$600(Lcom/google/android/gm/NumberPicker;Landroid/view/View;)V

    .line 170
    :cond_0
    return-void
.end method
