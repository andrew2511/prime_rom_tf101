.class Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode$1;
.super Ljava/lang/Object;
.source "CalculatorEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode$1;->this$1:Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode$1;->this$1:Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;

    iget-object v0, v0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;->this$0:Lcom/android/calculator2/CalculatorEditText;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode$1;->this$1:Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;

    iget-object v1, v1, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;->this$0:Lcom/android/calculator2/CalculatorEditText;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorEditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorEditText;->setSelection(I)V

    .line 94
    return-void
.end method
