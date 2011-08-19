.class Lcom/android/inputmethod/latin/SubtypeSwitcher$1;
.super Ljava/lang/Thread;
.source "SubtypeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToShortcutIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field final synthetic val$imiId:Ljava/lang/String;

.field final synthetic val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/SubtypeSwitcher;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->this$0:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iput-object p3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->this$0:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->access$000(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 316
    return-void
.end method
