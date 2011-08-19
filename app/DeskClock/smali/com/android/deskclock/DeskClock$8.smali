.class Lcom/android/deskclock/DeskClock$8;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$8;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 746
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$8;->this$0:Lcom/android/deskclock/DeskClock;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock$8;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$1000(Lcom/android/deskclock/DeskClock;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$1002(Lcom/android/deskclock/DeskClock;Z)Z

    .line 747
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$8;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0, v2}, Lcom/android/deskclock/DeskClock;->access$1100(Lcom/android/deskclock/DeskClock;Z)V

    .line 748
    return-void

    .line 746
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
