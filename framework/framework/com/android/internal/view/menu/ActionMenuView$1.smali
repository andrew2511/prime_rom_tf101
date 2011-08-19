.class Lcom/android/internal/view/menu/ActionMenuView$1;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuView;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView$1;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView$1;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->showOverflowMenu()Z

    .line 58
    return-void
.end method
