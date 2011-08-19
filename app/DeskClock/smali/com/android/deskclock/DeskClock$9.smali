.class Lcom/android/deskclock/DeskClock$9;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 751
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$9;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$9;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$700(Lcom/android/deskclock/DeskClock;)V

    .line 754
    const/4 v0, 0x1

    return v0
.end method
