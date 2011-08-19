.class Lcom/android/deskclock/DeskClock$4;
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
    .line 685
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    const-class v3, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    .line 688
    return-void
.end method
