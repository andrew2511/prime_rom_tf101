.class Lcom/google/android/googlequicksearchbox/ShortcutList$1;
.super Ljava/lang/Object;
.source "ShortcutList.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ShortcutList;->refresh(Lcom/google/android/googlequicksearchbox/Suggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ShortcutList;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ShortcutList;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1;->this$0:Lcom/google/android/googlequicksearchbox/ShortcutList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1;->this$0:Lcom/google/android/googlequicksearchbox/ShortcutList;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ShortcutList;->access$000(Lcom/google/android/googlequicksearchbox/ShortcutList;)Lcom/google/android/googlequicksearchbox/shortcutrepository/ClickLog;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ClickLog;->updateShortcut(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1;->this$0:Lcom/google/android/googlequicksearchbox/ShortcutList;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ShortcutList;->access$200(Lcom/google/android/googlequicksearchbox/ShortcutList;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;-><init>(Lcom/google/android/googlequicksearchbox/ShortcutList$1;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
