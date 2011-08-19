.class public interface abstract Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyboardActionListener"
.end annotation


# virtual methods
.method public abstract onKey(I[I)V
.end method

.method public abstract onMultitapTimeout()V
.end method

.method public abstract onPress(I)V
.end method

.method public abstract onRelease(I)V
.end method

.method public abstract onText(Ljava/lang/CharSequence;)V
.end method

.method public abstract onTrace(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract swipeDown()V
.end method

.method public abstract swipeLeft()V
.end method

.method public abstract swipeRight()V
.end method

.method public abstract swipeUp()V
.end method
