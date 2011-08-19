.class Lcom/google/android/gsf/login/EditTextWithHelp$1;
.super Ljava/lang/Object;
.source "EditTextWithHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/EditTextWithHelp;->showPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/EditTextWithHelp;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/EditTextWithHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/gsf/login/EditTextWithHelp$1;->this$0:Lcom/google/android/gsf/login/EditTextWithHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gsf/login/EditTextWithHelp$1;->this$0:Lcom/google/android/gsf/login/EditTextWithHelp;

    invoke-static {v0}, Lcom/google/android/gsf/login/EditTextWithHelp;->access$000(Lcom/google/android/gsf/login/EditTextWithHelp;)V

    .line 64
    return-void
.end method
