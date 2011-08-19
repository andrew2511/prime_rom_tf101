.class Lcom/android/launcher2/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1156
    iget-object v0, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$ShrinkState;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->shrink(Lcom/android/launcher2/Workspace$ShrinkState;Z)V

    .line 1157
    iget-object v0, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0, v2}, Lcom/android/launcher2/Workspace;->access$1402(Lcom/android/launcher2/Workspace;Z)Z

    .line 1158
    return-void
.end method
