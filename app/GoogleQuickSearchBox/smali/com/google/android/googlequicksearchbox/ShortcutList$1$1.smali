.class Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;
.super Ljava/lang/Object;
.source "ShortcutList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ShortcutList$1;->onShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/ShortcutList$1;

.field final synthetic val$refreshed:Lcom/google/android/googlequicksearchbox/Suggestion;

.field final synthetic val$shortcutId:Ljava/lang/String;

.field final synthetic val$source:Lcom/google/android/googlequicksearchbox/Source;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ShortcutList$1;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->this$1:Lcom/google/android/googlequicksearchbox/ShortcutList$1;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->val$shortcutId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->val$refreshed:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->this$1:Lcom/google/android/googlequicksearchbox/ShortcutList$1;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ShortcutList$1;->this$0:Lcom/google/android/googlequicksearchbox/ShortcutList;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->val$shortcutId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ShortcutList$1$1;->val$refreshed:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/ShortcutList;->access$100(Lcom/google/android/googlequicksearchbox/ShortcutList;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 70
    return-void
.end method
