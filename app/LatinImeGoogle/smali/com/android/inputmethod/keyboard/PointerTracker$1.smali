.class final Lcom/android/inputmethod/keyboard/PointerTracker$1;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onCodeInput(I[III)V
    .locals 0
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    return-void
.end method

.method public onPress(IZ)V
    .locals 0
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 96
    return-void
.end method

.method public onRelease(IZ)V
    .locals 0
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 98
    return-void
.end method

.method public onSwipeDown()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 102
    return-void
.end method
