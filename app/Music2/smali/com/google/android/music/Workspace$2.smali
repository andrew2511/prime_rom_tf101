.class Lcom/google/android/music/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/Workspace;


# direct methods
.method constructor <init>(Lcom/google/android/music/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/google/android/music/Workspace$2;->this$0:Lcom/google/android/music/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/music/Workspace$2;->this$0:Lcom/google/android/music/Workspace;

    iget-object v1, p0, Lcom/google/android/music/Workspace$2;->this$0:Lcom/google/android/music/Workspace;

    invoke-static {v1}, Lcom/google/android/music/Workspace;->access$000(Lcom/google/android/music/Workspace;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 708
    return-void
.end method
