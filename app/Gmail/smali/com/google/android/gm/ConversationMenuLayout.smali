.class public abstract Lcom/google/android/gm/ConversationMenuLayout;
.super Ljava/lang/Object;
.source "ConversationMenuLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/google/android/gm/ConversationController;Landroid/view/ViewGroup;)Lcom/google/android/gm/ConversationMenuLayout;
    .locals 1
    .parameter "context"
    .parameter "controller"
    .parameter "rootView"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/android/gm/XLargeConversationMenu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gm/XLargeConversationMenu;-><init>(Landroid/content/Context;Lcom/google/android/gm/ConversationController;Landroid/view/ViewGroup;)V

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gm/DefaultConversationMenu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gm/DefaultConversationMenu;-><init>(Landroid/content/Context;Lcom/google/android/gm/ConversationController;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract buildControls()V
.end method

.method public abstract resetLayout()V
.end method

.method public abstract setListContext(Lcom/google/android/gm/ConversationListContext;)V
.end method
