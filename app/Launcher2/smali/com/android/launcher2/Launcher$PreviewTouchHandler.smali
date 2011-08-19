.class Lcom/android/launcher2/Launcher$PreviewTouchHandler;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewTouchHandler"
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "anchor"

    .prologue
    .line 2439
    iput-object p1, p0, Lcom/android/launcher2/Launcher$PreviewTouchHandler;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2440
    iput-object p2, p0, Lcom/android/launcher2/Launcher$PreviewTouchHandler;->mAnchor:Landroid/view/View;

    .line 2441
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/launcher2/Launcher$PreviewTouchHandler;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2445
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2446
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 2453
    if-eqz p2, :cond_0

    .line 2454
    iget-object v0, p0, Lcom/android/launcher2/Launcher$PreviewTouchHandler;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2456
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/launcher2/Launcher$PreviewTouchHandler;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$PreviewTouchHandler;->mAnchor:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1200(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    .line 2450
    return-void
.end method
