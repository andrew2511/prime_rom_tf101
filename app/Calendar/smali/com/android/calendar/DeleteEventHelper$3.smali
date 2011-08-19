.class Lcom/android/calendar/DeleteEventHelper$3;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$800(Lcom/android/calendar/DeleteEventHelper;)V

    .line 144
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$500(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$500(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$600(Lcom/android/calendar/DeleteEventHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$700(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 150
    :cond_1
    return-void
.end method
