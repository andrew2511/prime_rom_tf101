.class Lcom/google/android/finsky/navigationmanager/NavigationManager$1;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "message"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Z)V

    goto :goto_0
.end method
