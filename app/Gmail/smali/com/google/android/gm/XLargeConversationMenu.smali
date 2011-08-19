.class public Lcom/google/android/gm/XLargeConversationMenu;
.super Lcom/google/android/gm/DefaultConversationMenu;
.source "XLargeConversationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/ConversationController;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "context"
    .parameter "controller"
    .parameter "rootView"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/DefaultConversationMenu;-><init>(Landroid/content/Context;Lcom/google/android/gm/ConversationController;Landroid/view/ViewGroup;)V

    .line 21
    return-void
.end method


# virtual methods
.method public buildControls()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeConversationMenu;->setupPreviousButton()V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeConversationMenu;->setupNextButton()V

    .line 27
    return-void
.end method
