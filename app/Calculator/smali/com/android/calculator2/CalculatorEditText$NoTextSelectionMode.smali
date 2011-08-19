.class Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;
.super Ljava/lang/Object;
.source "CalculatorEditText.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoTextSelectionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorEditText;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;->this$0:Lcom/android/calculator2/CalculatorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;->this$0:Lcom/android/calculator2/CalculatorEditText;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorEditText;->access$000(Lcom/android/calculator2/CalculatorEditText;)V

    .line 91
    iget-object v0, p0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;->this$0:Lcom/android/calculator2/CalculatorEditText;

    new-instance v1, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode$1;

    invoke-direct {v1, p0}, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode$1;-><init>(Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calculator2/CalculatorEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 101
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
