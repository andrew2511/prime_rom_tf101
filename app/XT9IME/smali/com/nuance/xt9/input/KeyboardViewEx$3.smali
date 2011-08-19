.class Lcom/nuance/xt9/input/KeyboardViewEx$3;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/KeyboardViewEx;->onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 1347
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx$3;->onText(Ljava/lang/CharSequence;)V

    .line 1348
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 1373
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 1365
    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 1370
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 1355
    return-void
.end method

.method public onTrace(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p1, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$3;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Ljava/util/ArrayList;)V

    .line 1381
    :cond_0
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1360
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1357
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1358
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1359
    return-void
.end method
