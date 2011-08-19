.class Lcom/android/deskclock/SetAlarm$5;
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


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$900(Lcom/android/deskclock/SetAlarm;)V

    .line 164
    return-void
.end method
