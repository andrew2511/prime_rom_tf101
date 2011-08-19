.class Lcom/android/launcher2/Launcher$7;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->completeAddAppWidget(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    iput p3, p0, Lcom/android/launcher2/Launcher$7;->val$appWidgetId:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Launcher$7;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1263
    return-void
.end method
