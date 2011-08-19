.class Lcom/google/android/talk/BuddyListCombo$9;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->setupSearchUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1278
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v1, v3}, Lcom/google/android/talk/BuddyListCombo;->access$1900(Lcom/google/android/talk/BuddyListCombo;Z)V

    .line 1279
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/google/android/talk/BuddyListCombo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1281
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$2000(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1282
    return v3
.end method
