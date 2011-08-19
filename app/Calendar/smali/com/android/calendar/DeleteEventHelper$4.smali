.class Lcom/android/calendar/DeleteEventHelper$4;
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
    .line 157
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$4;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$4;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v1, p2}, Lcom/android/calendar/DeleteEventHelper;->access$202(Lcom/android/calendar/DeleteEventHelper;I)I

    .line 163
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$4;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v1}, Lcom/android/calendar/DeleteEventHelper;->access$900(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 164
    .local v0, ok:Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    return-void
.end method
