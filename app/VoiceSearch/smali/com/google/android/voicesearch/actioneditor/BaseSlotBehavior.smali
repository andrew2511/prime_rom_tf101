.class public abstract Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;
.super Ljava/lang/Object;
.source "BaseSlotBehavior.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/voicesearch/actioneditor/SlotView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;"
    }
.end annotation


# instance fields
.field protected final mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 31
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isHardKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
