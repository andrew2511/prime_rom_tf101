.class Lcom/google/android/gm/TriStateSplitLayout$3;
.super Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;
.source "TriStateSplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TriStateSplitLayout;->uncollapseList()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TriStateSplitLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout$3;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;-><init>(Lcom/google/android/gm/TriStateSplitLayout;Lcom/google/android/gm/TriStateSplitLayout$1;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$3;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$500(Lcom/google/android/gm/TriStateSplitLayout;)V

    .line 778
    return-void
.end method
