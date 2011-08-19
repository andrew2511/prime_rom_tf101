.class Lcom/android/deskclock/SetAlarm$4;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;

.field final synthetic val$revert:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    iput-object p2, p0, Lcom/android/deskclock/SetAlarm$4;->val$revert:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$600(Lcom/android/deskclock/SetAlarm;)I

    move-result v0

    .line 147
    .local v0, newId:I
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v2}, Lcom/android/deskclock/SetAlarm;->access$700(Lcom/android/deskclock/SetAlarm;)Lcom/android/deskclock/Alarm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/deskclock/SetAlarm;->access$800(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)V

    .line 149
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$700(Lcom/android/deskclock/SetAlarm;)Lcom/android/deskclock/Alarm;

    move-result-object v1

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v1, v0}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->val$revert:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$500(Lcom/android/deskclock/SetAlarm;)J

    goto :goto_0
.end method
