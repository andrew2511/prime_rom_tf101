.class Lcom/android/deskclock/RepeatPreference$1;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/RepeatPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/deskclock/RepeatPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/deskclock/RepeatPreference$1;->this$0:Lcom/android/deskclock/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference$1;->this$0:Lcom/android/deskclock/RepeatPreference;

    invoke-static {v0}, Lcom/android/deskclock/RepeatPreference;->access$000(Lcom/android/deskclock/RepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(IZ)V

    .line 73
    return-void
.end method
