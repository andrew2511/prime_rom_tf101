.class Lcom/android/deskclock/AlarmClock$2;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$2;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$2;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-static {v0}, Lcom/android/deskclock/AlarmClock;->access$200(Lcom/android/deskclock/AlarmClock;)V

    .line 217
    return-void
.end method
