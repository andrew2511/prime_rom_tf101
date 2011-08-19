.class Lcom/google/android/gm/IntegerPickerPreference$1;
.super Ljava/lang/Object;
.source "IntegerPickerPreference.java"

# interfaces
.implements Lcom/google/android/gm/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/IntegerPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/IntegerPickerPreference;


# direct methods
.method constructor <init>(Lcom/google/android/gm/IntegerPickerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gm/IntegerPickerPreference$1;->this$0:Lcom/google/android/gm/IntegerPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/google/android/gm/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference$1;->this$0:Lcom/google/android/gm/IntegerPickerPreference;

    invoke-static {v0}, Lcom/google/android/gm/IntegerPickerPreference;->access$000(Lcom/google/android/gm/IntegerPickerPreference;)V

    .line 54
    return-void
.end method
