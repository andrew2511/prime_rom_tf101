.class Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;
.super Ljava/lang/Object;
.source "InputMethodsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->createInputMethodItem(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$400(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    .line 251
    .local v0, imiAndSubtype:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->closePanel(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v2, p0, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$500(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 253
    return-void
.end method
