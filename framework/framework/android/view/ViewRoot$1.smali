.class Landroid/view/ViewRoot$1;
.super Ljava/lang/Object;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/InputHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRoot;


# direct methods
.method constructor <init>(Landroid/view/ViewRoot;)V
    .registers 2
    .parameter

    .prologue
    .line 3333
    iput-object p1, p0, Landroid/view/ViewRoot$1;->this$0:Landroid/view/ViewRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 3335
    iget-object v0, p0, Landroid/view/ViewRoot$1;->this$0:Landroid/view/ViewRoot;

    #calls: Landroid/view/ViewRoot;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRoot;->access$000(Landroid/view/ViewRoot;Landroid/view/InputQueue$FinishedCallback;)V

    .line 3336
    iget-object v0, p0, Landroid/view/ViewRoot$1;->this$0:Landroid/view/ViewRoot;

    const/4 v1, 0x1

    #calls: Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRoot;->access$100(Landroid/view/ViewRoot;Landroid/view/KeyEvent;Z)V

    .line 3337
    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 3340
    iget-object v0, p0, Landroid/view/ViewRoot$1;->this$0:Landroid/view/ViewRoot;

    #calls: Landroid/view/ViewRoot;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRoot;->access$000(Landroid/view/ViewRoot;Landroid/view/InputQueue$FinishedCallback;)V

    .line 3341
    iget-object v0, p0, Landroid/view/ViewRoot$1;->this$0:Landroid/view/ViewRoot;

    const/4 v1, 0x1

    #calls: Landroid/view/ViewRoot;->dispatchMotion(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRoot;->access$200(Landroid/view/ViewRoot;Landroid/view/MotionEvent;Z)V

    .line 3342
    return-void
.end method
